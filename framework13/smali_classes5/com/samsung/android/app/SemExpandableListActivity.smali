.class public Lcom/samsung/android/app/SemExpandableListActivity;
.super Landroid/app/Activity;
.source "SemExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;
.implements Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/SemExpandableListView$OnGroupExpandListener;


# instance fields
.field blacklist mAdapter:Landroid/widget/ExpandableListAdapter;

.field blacklist mFinishedStart:Z

.field blacklist mList:Landroid/widget/SemExpandableListView;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private blacklist ensureList()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    if-eqz v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemExpandableListActivity;->setContentView(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListView()Landroid/widget/SemExpandableListView;
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    return-object v0
.end method

.method public whitelist getSelectedId()J
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedPosition()J
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/SemExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContentChanged()V
    .locals 3

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 220
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    .line 222
    if-eqz v1, :cond_2

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V

    .line 236
    iget-boolean v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 239
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    .line 240
    return-void

    .line 223
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a SemExpandableListView whose id attribute is \'R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 175
    return-void
.end method

.method public whitelist onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .line 191
    return-void
.end method

.method public whitelist onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .line 197
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public whitelist setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    .line 250
    iput-object p1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 252
    monitor-exit p0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setSelectedGroup(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setSelectedGroup(I)V

    .line 326
    return-void
.end method
