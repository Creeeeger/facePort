.class public final Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsAdmin:Z

.field public mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

.field public final mLock:Ljava/lang/Object;

.field public mMode:I

.field public mSavedWifiEntries:Ljava/util/ArrayList;

.field public final mWifiEntryCandidates:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mIsAdmin:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->updateAllWifiEntries(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final getCheckedCount$1()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRemovableEntriesCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAutoSelectAllEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->isRemovableNetwork()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    if-ne v2, v4, :cond_2

    move v1, v4

    :cond_2
    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryHolder;->mEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->isRemovableNetwork()Ljava/lang/Boolean;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mIsAdmin:Z

    invoke-virtual {p1, v1, p2, v3, v4}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->setWifiEntry(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;ILcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;Z)V

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->setSummary(Z)V

    iget p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mMode:I

    iput p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mMode:I

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d098a

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryHolder;->mEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    return-object p1
.end method

.method public final setChecked(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-boolean v1, v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setRemoveAllState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iput-boolean p1, v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateAllWifiEntries(Ljava/util/Collection;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    check-cast p1, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v3, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
