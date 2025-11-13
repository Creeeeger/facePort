.class public Landroid/widget/RemoteViewsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsListAdapter.java"


# instance fields
.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mRemoteViewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewTypeCount:I

.field private greylist-max-o mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/widget/RemoteViews$ColorResources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I",
            "Landroid/widget/RemoteViews$ColorResources;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    iput p3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    iput-object p4, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    return-void
.end method

.method private greylist-max-o init()V
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v1, v2, :cond_0

    move-object v3, p2

    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setViewsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->notifyDataSetChanged()V

    return-void
.end method
