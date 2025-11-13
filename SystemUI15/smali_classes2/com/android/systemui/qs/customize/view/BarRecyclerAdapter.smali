.class public final Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final barItems:Ljava/util/ArrayList;

.field public final customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f547ae1    # 0.83f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;Lcom/android/systemui/qs/customize/CustomActionManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;",
            "Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;",
            "Lcom/android/systemui/qs/customize/CustomActionManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->barItems:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p4, 0x1

    if-ltz p4, :cond_1

    check-cast v0, Ljava/lang/String;

    const-string v1, "ExpandableChunkTileLayoutBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TileChunkLayoutBar"

    invoke-virtual {p1, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move p4, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    check-cast v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v0, :cond_3

    iget-object p3, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->barItems:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;Lcom/android/systemui/qs/customize/CustomActionManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;Lcom/android/systemui/qs/customize/CustomActionManager;)V

    return-void
.end method


# virtual methods
.method public final addAccessibilityInfo(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->barItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->barView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f130f33

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f130e49

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_DOWN:Lcom/android/systemui/qs/customize/CustomActionId;

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_BOTTOM:Lcom/android/systemui/qs/customize/CustomActionId;

    filled-new-array {p1, p2}, [Lcom/android/systemui/qs/customize/CustomActionId;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object p1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_UP:Lcom/android/systemui/qs/customize/CustomActionId;

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_TOP:Lcom/android/systemui/qs/customize/CustomActionId;

    filled-new-array {p1, p2}, [Lcom/android/systemui/qs/customize/CustomActionId;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_UP:Lcom/android/systemui/qs/customize/CustomActionId;

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_TOP:Lcom/android/systemui/qs/customize/CustomActionId;

    sget-object v0, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_DOWN:Lcom/android/systemui/qs/customize/CustomActionId;

    sget-object v1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_BOTTOM:Lcom/android/systemui/qs/customize/CustomActionId;

    filled-new-array {p1, p2, v0, v1}, [Lcom/android/systemui/qs/customize/CustomActionId;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    if-eqz p0, :cond_2

    new-instance p2, Lcom/android/systemui/qs/customize/CustomActionListDelegate;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/customize/CustomActionListDelegate;-><init>(Ljava/util/List;)V

    iput-object p0, p2, Lcom/android/systemui/qs/customize/CustomActionListDelegate;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-virtual {v2, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->barItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    iget-object v0, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->barView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->barItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->updateClonedBar()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v2, v1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    iput-object v5, v2, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->parentView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;-><init>(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lkotlin/Pair;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getClonedBarView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    move-object v3, v5

    check-cast v3, Landroid/view/ViewGroup;

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x60000

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    new-instance v1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;-><init>(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->addAccessibilityInfo(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;I)V

    :goto_3
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    const v0, 0x7f0d00ce

    const/4 v1, 0x0

    invoke-static {p2, v0, p2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;-><init>(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;Landroid/view/View;)V

    return-object p1
.end method
