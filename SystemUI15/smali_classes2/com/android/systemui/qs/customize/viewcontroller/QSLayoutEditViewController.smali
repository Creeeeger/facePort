.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;
.super Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final barHiddenStateList:Ljava/util/ArrayList;

.field public final barItems:Ljava/util/ArrayList;

.field public barList:Ljava/util/ArrayList;

.field public final barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public collapsedBarRow:I

.field public final collapsedBarRowConsumer:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$collapsedBarRowConsumer$1;

.field public final customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public final fullTileCustomizerClickListener:Landroid/view/View$OnClickListener;

.field public final hiddenEditableBars:Ljava/util/ArrayList;

.field public maxRow:I

.field public originBars:Ljava/util/ArrayList;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final simpleCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;

.field public final tileEditClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;

.field public tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/qs/bar/ColoredBGHelper;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;",
            "Lcom/android/systemui/qs/bar/ColoredBGHelper;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;",
            "Lcom/android/systemui/qs/customize/SecQSSettingEditResources;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0d02e8

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->fullTileCustomizerClickListener:Landroid/view/View$OnClickListener;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const p4, 0x7f0a0158

    invoke-virtual {p3, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->simpleCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->hiddenEditableBars:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    iget-object p1, p2, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget p1, p1, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRow:I

    new-instance p1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$collapsedBarRowConsumer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$collapsedBarRowConsumer$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRowConsumer:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$collapsedBarRowConsumer$1;

    new-instance p1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileEditClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;

    new-instance p1, Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-direct {p1}, Lcom/android/systemui/qs/customize/CustomActionManager;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const p5, 0x7f0a09d8

    invoke-virtual {p4, p5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$setOnClickListener$1;

    invoke-direct {p5, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$setOnClickListener$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const p4, 0x7f0a061d

    invoke-virtual {p3, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Ljava/util/ArrayList;

    iget-object p4, p2, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object p4, p4, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->setBarList(Ljava/util/ArrayList;)V

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_UP:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_TOP:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$3;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_DOWN:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$4;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_BOTTOM:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static final access$moveItem(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_0

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p3, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x1

    if-gt p3, p1, :cond_1

    move v0, p1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v0, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->notifyItemMoved(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final addHiddenBarsToList()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public final close()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const v1, 0x7f0a0956

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barItems:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->removeCloneTileBG()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, p1, 0x1

    if-ltz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;

    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->addAccessibilityInfo(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;I)V

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public final resolveMessage(Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->updateTileLayout(Z)V

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->updateTileLayout(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->addHiddenBarsToList()V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->setBarList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;Lcom/android/systemui/qs/customize/CustomActionManager;)V

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setBarList(Ljava/util/ArrayList;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->hiddenEditableBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->isNeedToEdit()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v1, v1, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez v1, :cond_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->hiddenEditableBars:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->hiddenEditableBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_6

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v3, v6

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barHiddenStateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    if-ltz v3, :cond_9

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->originBars:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    move v3, v4

    goto :goto_3

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_a
    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    return-void
.end method

.method public final show(Ljava/lang/Runnable;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    new-instance v8, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRowConsumer:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$collapsedBarRowConsumer$1;

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/function/IntConsumer;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    const v1, 0x7f0a0d2b

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileEditClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->updateTileLayout(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v4, 0x7f0a0957

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v0, v5, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$InfiniteInflateLayoutManager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$InfiniteInflateLayoutManager;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, v6

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->customActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;Lcom/android/systemui/qs/customize/CustomActionManager;)V

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v3, v1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->simpleCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const v2, 0x7f0a0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const v2, 0x7f130e3d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    const v1, 0x7f0a096e

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f130e4b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateTileLayout(Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->getPanelColumns()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    const v5, 0x7f0a0d2a

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->removeAllViews()V

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    if-eqz p1, :cond_3

    iget-object v5, v1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    :cond_2
    iget-object v5, v1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v6, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    move v6, v8

    :goto_0
    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->maxRow:I

    iget v6, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRow:I

    if-le v6, v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    iget-object v9, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    if-le v6, v5, :cond_6

    iput v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRow:I

    iget-object v6, v9, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setCollapsedBarRow(I)V

    invoke-virtual {v9}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    goto :goto_3

    :cond_6
    if-nez v6, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v8

    goto :goto_2

    :cond_7
    iget v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->maxRow:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8

    move v5, v7

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    iput v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRow:I

    iget-object v6, v9, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setCollapsedBarRow(I)V

    invoke-virtual {v9}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    :cond_9
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v6, :cond_a

    const/4 v6, 0x0

    :cond_a
    iget v9, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->maxRow:I

    if-nez v9, :cond_b

    iget v10, v6, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    goto :goto_4

    :cond_b
    iget v10, v6, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    mul-int/2addr v10, v9

    :goto_4
    iput v10, v6, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->maximumFrameSize:I

    iget-object v6, v6, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->handlerBar:Landroid/widget/ImageView;

    if-nez v6, :cond_c

    const/4 v6, 0x0

    :cond_c
    if-eqz v9, :cond_d

    if-eq v9, v7, :cond_d

    move v7, v8

    goto :goto_5

    :cond_d
    const/4 v7, 0x4

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/high16 v10, -0x80000000

    const v11, 0x7f071720

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomTileInfo;

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v4, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-direct {v14, v15, v4}, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    iget-object v4, v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v14, v4}, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v13}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    invoke-static {v10, v12}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual {v13, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v2, v1

    if-ge v1, v2, :cond_f

    move v2, v8

    :goto_7
    if-ge v2, v1, :cond_f

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0710f3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    invoke-static {v10, v12}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v6, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->tileLayoutContainer:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    iget v1, v0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    mul-int/2addr v1, v5

    iput v5, v0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->currentRow:I

    iget-object v2, v0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez v2, :cond_11

    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    move-object v4, v2

    :goto_8
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v8, v2, :cond_13

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    mul-int/2addr v3, v5

    if-ge v8, v3, :cond_13

    invoke-virtual {v4, v8}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v6, v4, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->SCALE_FACTOR:F

    invoke-static {v3, v12, v6, v12}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->setViewFraction(Landroid/view/View;FFF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    iget v2, v0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    if-ge v1, v2, :cond_14

    move v1, v2

    :cond_14
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->updateLayoutHeight(I)V

    :cond_15
    return-void
.end method
