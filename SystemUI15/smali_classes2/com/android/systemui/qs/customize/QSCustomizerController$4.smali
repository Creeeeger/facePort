.class public final Lcom/android/systemui/qs/customize/QSCustomizerController$4;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$4;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$4;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method
