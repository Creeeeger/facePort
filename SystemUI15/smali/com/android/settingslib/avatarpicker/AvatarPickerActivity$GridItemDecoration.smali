.class public final Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIncludeEdge:Z

.field public final mRtl:Z

.field public final mSpacing:I

.field public final mSpacingTop:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f30

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f31

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    iput-boolean p3, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    invoke-static {p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

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
