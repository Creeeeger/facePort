.class public final Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIncludeEdge:Z

.field public final mRtl:Z

.field public final mSpacing:I

.field public final mSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

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

    rem-int/2addr p2, p3

    iget-boolean p4, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    iget v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    if-eqz p4, :cond_1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    if-eqz p0, :cond_2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    mul-int p0, p2, v0

    div-int/2addr p0, p3

    iput p0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v0

    div-int/2addr p2, p3

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    return-void
.end method
