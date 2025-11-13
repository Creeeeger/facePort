.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DndAppSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppSelectDataViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

.field private mItemsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$OUTN-4-xKV3BTvW2Qt55wrkGxxI(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mItemsData:Ljava/util/ArrayList;

    .line 34
    iput-object p3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iput-object p4, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mAppSelectDataViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    .line 36
    iput-object p5, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mAppSelectDataViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->putChecked(Ljava/lang/String;Z)V

    .line 56
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mAppSelectDataViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->updateAppList(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mItemsData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 51
    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mItemsData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;

    .line 52
    invoke-virtual {p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 53
    move-object v1, p1

    check-cast v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;

    .line 54
    new-instance v2, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->-$$Nest$fgetmTitle(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->-$$Nest$fgetmIcon(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->getmUid()I

    move-result p2

    invoke-virtual {p1, v2, v4, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->loadIcon(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 61
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mAppSelectDataViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->isAllowlistApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 62
    invoke-static {v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->-$$Nest$fgetmRemoveIcon(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->-$$Nest$fgetmRemoveIcon(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->grid_item:I

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 45
    new-instance p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "DndAppSelectListAdapter"

    const-string/jumbo p1, "setAppList() - List of PackageInfo is null"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mItemsData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 81
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 83
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 88
    iget-object v5, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, ""

    .line 92
    :goto_1
    iget-object v5, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mItemsData:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v4, v7, v3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
