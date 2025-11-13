.class public Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public fontSize:F

.field public mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

.field public final mDataListener:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$2;

.field public mEmptyState:Landroid/widget/LinearLayout;

.field public mEmptyStateImage:Landroid/widget/ImageView;

.field public mEmptyStateSubtitle:Landroid/widget/TextView;

.field public mEmptyStateTitle:Landroid/widget/TextView;

.field public mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

.field public mHorizontalMargin:I

.field public mIsBackCallbackRegistered:Z

.field public final mOnBackInvokedCallback:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

.field public final mOverflowBubbles:Ljava/util/List;

.field public mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mVerticalMargin:I

.field public textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mIsBackCallbackRegistered:Z

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOnBackInvokedCallback:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$2;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mIsBackCallbackRegistered:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOnBackInvokedCallback:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mIsBackCallbackRegistered:Z

    goto :goto_0

    :cond_1
    const-string p0, "Bubbles"

    const-string/jumbo v0, "view root was null, could not register back callback"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0208

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    const v0, 0x7f0a020a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0a0209

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    return-void
.end method

.method public final show()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f070178

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowItemDecoration;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowItemDecoration;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;)V

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$2;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateEmptyStateVisibility()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const v3, 0x7f07017d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mHorizontalMargin:I

    const v3, 0x7f07017e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mVerticalMargin:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_3
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    const v4, 0x7f13105b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a0207

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_4

    const v4, 0x7f060087

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_4
    const v4, 0x7f060089

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x11200c9

    const v4, 0x11200b6

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v2, :cond_5

    const/high16 v3, -0x1000000

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0604cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->textColor:I

    const-string/jumbo v4, "sec"

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/16 v5, 0x190

    invoke-static {v4, v5, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->textColor:I

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->textColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->textColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateEmptyStateVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final updateFontSize()V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->fontSize:F

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->fontSize:F

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final updateLocale()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f130324

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f130323

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
