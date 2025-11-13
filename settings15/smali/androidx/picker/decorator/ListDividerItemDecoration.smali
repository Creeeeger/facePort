.class public final Landroidx/picker/decorator/ListDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final divider:Landroid/graphics/drawable/Drawable;

.field public final dividerPaddingStart:I

.field public final iconFrameWidth:I

.field public final leftFrameWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1010214

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026roid.R.attr.listDivider))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    invoke-static {p1}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v0, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->dividerPaddingStart:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->iconFrameWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->leftFrameWidth:I

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    invoke-direct {v0, p2}, Landroidx/core/view/ViewGroupKt$iterator$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    if-ltz v1, :cond_c

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    instance-of v7, v1, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    if-nez v7, :cond_b

    instance-of v7, v1, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    if-nez v7, :cond_b

    instance-of v7, v6, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    if-nez v7, :cond_b

    instance-of v6, v6, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    if-eqz v6, :cond_4

    goto/16 :goto_8

    :cond_4
    instance-of v6, v1, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    if-eqz v6, :cond_7

    check-cast v1, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    iget-object v6, v1, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    invoke-interface {v6}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v6, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->leftFrameWidth:I

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    iget-object v1, v1, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->iconFrameWidth:I

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v1

    iget v1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->dividerPaddingStart:I

    sub-int/2addr v7, v1

    goto :goto_5

    :cond_7
    move v7, v2

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v9, :cond_8

    move-object v5, v8

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    :cond_8
    if-eqz v5, :cond_9

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_9
    move v5, v2

    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "child.context"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    sub-int/2addr v6, v7

    invoke-virtual {p3, v1, v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    :cond_a
    add-int/2addr v1, v7

    invoke-virtual {p3, v1, v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_7
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    :goto_8
    move v1, v4

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_d
    return-void
.end method
