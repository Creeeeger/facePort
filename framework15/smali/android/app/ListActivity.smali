.class public Landroid/app/ListActivity;
.super Landroid/app/Activity;
.source "ListActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mFinishedStart:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field protected greylist-max-o mList:Landroid/widget/ListView;

.field private greylist-max-o mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    new-instance v0, Landroid/app/ListActivity$1;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$1;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Landroid/app/ListActivity$2;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$2;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private greylist-max-o ensureList()V
    .locals 1

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x10900b4

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public whitelist getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .locals 2

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist onContentChanged()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v1, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    return-void

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    iput-object p1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setSelection(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
