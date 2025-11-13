.class public final Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final currentUserId:I

.field public layoutCompletedCallback:Ljava/util/function/Consumer;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public model:Lcom/android/systemui/controls/management/model/StructureModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iput p4, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->currentUserId:I

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    move-result-object p0

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

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    if-eqz p1, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    if-eqz p0, :cond_4

    const/16 p0, 0x64

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

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onAttachedToRecyclerView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onAttachedToRecyclerView$1$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;->bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V

    :cond_0
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x64

    if-ne p1, p0, :cond_0

    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;

    const p1, 0x7f0d00b1

    invoke-virtual {v0, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Wrong viewType: "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;

    const p1, 0x7f0d00c6

    invoke-virtual {v0, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;

    const p1, 0x7f0d00ad

    invoke-virtual {v0, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;)V

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget v1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->currentUserId:I

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-direct {p1, p2, v1, p0, v0}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method
