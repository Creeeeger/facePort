.class public Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectPageOthersAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/samsung/android/settings/share/presenter/TileContainerPresenter<",
        "Lcom/samsung/android/settings/share/structure/ShareComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCompRankMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mOnItemRemoved:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectAppViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

.field private final mSourcesIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mTileDragController:Lcom/samsung/android/settings/share/controller/TileDragController;


# direct methods
.method public static synthetic $r8$lambda$7jdlxcCpwXmnPpWLZmR3vIkCRms(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->lambda$onCreateViewHolder$0(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DWpkYZpOERf5Lsm4P2c15qwbNZI(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->lambda$findInsertIdx$4(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KxlV4MI37qS7HUWTYiKVnq47eCU(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YepO4MTJi7RI7af9H14LcTLzJVw(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->lambda$onBindViewHolder$3(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-cwxi1aiP6qZ0toqEeyQpeKpYc(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/util/Pair;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->lambda$onBindViewHolder$2(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/util/Pair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/samsung/android/settings/share/SelectAppViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/samsung/android/settings/share/SelectAppViewModel;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mOnItemRemoved:Landroidx/core/util/Consumer;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mCompRankMap:Ljava/util/Map;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mSourcesIntentList:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mSelectAppViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    return-void
.end method

.method private findInsertIdx(Lcom/samsung/android/settings/share/structure/ShareComponent;)I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mCompRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;)V

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$findInsertIdx$4(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 199
    iget-object v3, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mCompRankMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$onBindViewHolder$2(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/util/Pair;)V
    .locals 3

    .line 116
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 117
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mMainLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mSecondLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mSecondLabelView:Landroid/widget/TextView;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 120
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->updateContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$3(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mSelectAppViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-virtual {p2}, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mOnItemRemoved:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mSelectAppViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mTileDragController:Lcom/samsung/android/settings/share/controller/TileDragController;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/share/controller/TileDragController;->startDrag(Landroid/view/View;Lcom/samsung/android/settings/share/structure/ShareTileTag;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addTile(Lcom/samsung/android/settings/share/structure/ShareComponent;I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public bridge synthetic addTile(Ljava/lang/Object;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->addTile(Lcom/samsung/android/settings/share/structure/ShareComponent;I)V

    return-void
.end method

.method public addTileLast(Lcom/samsung/android/settings/share/structure/ShareComponent;)I
    .locals 1

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->findInsertIdx(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    move-result v0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->addTile(Lcom/samsung/android/settings/share/structure/ShareComponent;I)V

    return v0
.end method

.method public bridge synthetic addTileLast(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->addTileLast(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Lcom/samsung/android/settings/share/structure/ShareComponent;)I
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->getItemPosition(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 141
    iget-boolean p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mDisableIcon:Z

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public notifyChange()V
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 107
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    instance-of v0, p1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;

    if-eqz v0, :cond_1

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 113
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/share/structure/ShareTileTag;-><init>(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mSourcesIntentList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;)V

    new-instance v2, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;)V

    invoke-virtual {p2, p1, p0, v1, v2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getInfo(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-ne v0, p0, :cond_1

    .line 130
    check-cast p1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;

    .line 131
    iget-object p0, p1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    sget p2, Lcom/android/settings/R$drawable;->sec_share_hint_circle:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object p0, p1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mSecondLabelView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object p0, p1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mMainLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 134
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->updateContentDescription(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 77
    iget-object p2, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->sec_share_select_page_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Landroid/view/View;)V

    .line 79
    new-instance v0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public removeTile(Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeTile(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->removeTile(Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    return-void
.end method

.method public setComponents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCustomDragListener(Lcom/samsung/android/settings/share/controller/TileDragController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mTileDragController:Lcom/samsung/android/settings/share/controller/TileDragController;

    return-void
.end method

.method public setOnItemRemoved(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mOnItemRemoved:Landroidx/core/util/Consumer;

    return-void
.end method

.method public shiftItems(II)V
    .locals 2

    if-le p1, p2, :cond_0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-lt p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 179
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->mComponentList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 184
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method
