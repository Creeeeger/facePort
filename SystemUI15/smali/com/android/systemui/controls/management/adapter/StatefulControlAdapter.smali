.class public final Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final controlViewHolders:Ljava/util/Map;


# instance fields
.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final buttonClickCallback:Landroid/view/View$OnClickListener;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final currentUserId:I

.field public final itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;

.field public models:Ljava/util/List;

.field public final positionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

.field public final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

.field public final spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;

.field public final spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

.field public final spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/SecControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move/from16 v3, p17

    iput v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->currentUserId:I

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanManager;

    move-object/from16 v4, p8

    invoke-direct {v3, v4}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    iget-object v4, v3, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v7, v5, v5, v8, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    sget-boolean v10, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    const v11, 0x7f070f4d

    const v12, 0x7f070241

    if-eqz v10, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :goto_0
    const/4 v14, 0x2

    invoke-direct {v7, v13, v5, v14, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz v10, :cond_1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    invoke-direct {v7, v1, v5, v14, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v4, v5, v5, v8, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uid:I

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;

    return-void
.end method


# virtual methods
.method public final attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;

    iput-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$ControlsItemDecoration;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$ControlsItemDecoration;-><init>(Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x3

    if-eq p0, p1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v0

    :cond_3
    :goto_0
    return p1
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/Holder;->bindData(Lcom/android/systemui/controls/management/model/MainModel;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2

    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-ne v2, v3, :cond_2

    instance-of v1, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    iget-boolean v2, v2, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    iget-object v1, v1, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v5, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v6, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;

    const v5, 0x7f0d00bf

    invoke-virtual {v3, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v10, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    iget-object v8, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    iget-object v9, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    iget-object v11, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Wrong viewType: "

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v1, 0x7f0d00a9

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0336

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const v3, 0x7f0d00c1

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    new-instance v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup;

    iget v15, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uid:I

    iget-object v13, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iget-object v14, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    iget-object v10, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v11, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v12, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget v0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->currentUserId:I

    move-object v8, v2

    move/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;II)V

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v7}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Lcom/android/systemui/controls/util/ControlsUtil;I)V

    new-instance v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    sget-object v3, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    const v1, 0x7f0d036f

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    iget v14, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uid:I

    iget-object v12, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iget-object v13, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    iget-object v9, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v10, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v11, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget v15, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->currentUserId:I

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;II)V

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v4}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Lcom/android/systemui/controls/util/ControlsUtil;I)V

    new-instance v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    sget-object v3, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/systemui/controls/management/adapter/StructureHolder;

    const v0, 0x7f0d00b2

    invoke-virtual {v3, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/adapter/StructureHolder;-><init>(Landroid/view/View;)V

    :goto_1
    return-object v1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    instance-of v0, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    check-cast p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-le v0, v3, :cond_3

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    return-void
.end method
