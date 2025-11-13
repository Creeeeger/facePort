.class public Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AvatarPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AvatarPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemDecoration"
.end annotation


# instance fields
.field private mIncludeEdge:Z

.field private final mRtl:Z

.field private mSpacing:I

.field private mSpacingTop:I

.field final synthetic this$0:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;Z)V
    .locals 1

    .line 509
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 510
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$dimen;->sec_avatar_item_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    .line 511
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$dimen;->sec_avatar_item_top_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    .line 512
    iput-boolean p3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    .line 513
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 518
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 520
    instance-of v0, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 524
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 526
    rem-int/2addr p2, p4

    .line 527
    iget-boolean p3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    if-eqz p3, :cond_1

    .line 528
    iget p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 529
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 530
    iget p4, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 531
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 533
    iget-boolean p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    if-eqz p0, :cond_2

    .line 535
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 536
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 539
    :cond_1
    iget p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    mul-int p3, p2, p0

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p0

    .line 540
    div-int/2addr p2, p4

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    return-void
.end method
