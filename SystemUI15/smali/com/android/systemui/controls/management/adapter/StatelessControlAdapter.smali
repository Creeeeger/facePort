.class public final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final currentUserId:I

.field public model:Lcom/android/systemui/controls/management/model/AllControlsModel;

.field public final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

.field public final spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;I)V
    .locals 10

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput p4, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->currentUserId:I

    new-instance p4, Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-direct {p4, p2}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    sget-boolean v5, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    const v6, 0x7f070f4d

    const v7, 0x7f070241

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_0
    const/4 v9, 0x2

    invoke-direct {v2, v8, v0, v9, v4}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    invoke-direct {v2, p1, v0, v9, v4}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    new-instance p1, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;

    return-void
.end method

.method public static final onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final attachedToRecyclerView$1(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;

    iput-object p0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const/16 p0, 0x67

    goto :goto_0

    :cond_1
    move p0, p1

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz p1, :cond_3

    const/16 p0, 0x65

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    if-eqz p0, :cond_4

    const/16 p0, 0x66

    :goto_0
    return p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Getting item type for null model"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->attachedToRecyclerView$1(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/adapter/SecHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecHolder;->bindData(Lcom/android/systemui/controls/management/model/SecElementWrapper;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/adapter/SecHolder;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of p2, p0, Lcom/android/systemui/controls/ControlInterface;

    if-eqz p2, :cond_1

    check-cast p0, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {p0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecHolder;->updateFavorite(Z)V

    goto :goto_0

    :cond_1
    instance-of p2, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecHolder;->updateFavorite(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget v2, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->currentUserId:I

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Wrong viewType: "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecD2DControlHolder;

    const v0, 0x7f0d00a9

    invoke-static {v0, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$2;-><init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V

    invoke-direct {p1, p2, v2, v1, v0}, Lcom/android/systemui/controls/management/adapter/SecD2DControlHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecPaddingHolder;

    const p0, 0x7f0d00ad

    invoke-static {p0, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecPaddingHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    const v0, 0x7f0d00c2

    invoke-static {v0, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$3;-><init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecControlHolder;

    const v0, 0x7f0d036f

    invoke-static {v0, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V

    invoke-direct {p1, p2, v2, v1, v0}, Lcom/android/systemui/controls/management/adapter/SecControlHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecZoneHolder;

    const p0, 0x7f0d0373

    invoke-static {p0, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->onCreateViewHolder$inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecZoneHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
