.class public final Lcom/android/systemui/statusbar/KshViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mData:Ljava/util/List;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public mMaxColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getKshData()Lcom/android/systemui/statusbar/model/KshData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyboardShortcutGroup;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->subHeader:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KshChildViewAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iput-object p2, v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d032d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mMaxColumn:I

    div-int/2addr p2, v1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
