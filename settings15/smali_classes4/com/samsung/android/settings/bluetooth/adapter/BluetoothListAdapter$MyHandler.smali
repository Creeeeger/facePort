.class public final Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field public final addList:Ljava/util/List;

.field public final removeList:Ljava/util/List;

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->addList:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->removeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    iget-object v1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_UPDATE: isRunning = "

    const-string v4, ", mNeed = "

    invoke-static {v3, v4, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    invoke-static {v3, v4, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-boolean v1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->addList:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->removeList:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSG_UPDATE: addSize = "

    const-string v5, ", removeSize = "

    invoke-static {v4, v5, v1, v2, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iput-boolean v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    :cond_2
    if-lez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->removeList:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->removeList:Ljava/util/List;

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_6

    instance-of v6, v4, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object v7, v6, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v8

    :try_start_0
    iget-object v7, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    instance-of v6, v4, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->reset$1()V

    :cond_5
    :goto_1
    iget-object v6, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "removeDeviceList: not contains"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->update()V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "removeDeviceList: mCachedList size 0"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    if-lez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->addList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->addList:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "addDeviceList: mCachedList size is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "add: contains already"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_d

    neg-int v4, v4

    sub-int/2addr v4, v0

    goto :goto_5

    :cond_c
    move v4, v3

    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "add: index = "

    const-string v7, ", size = "

    invoke-static {v4, v6, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v5, v5, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;->putDevicePreferenceMap(Landroidx/preference/Preference;)V

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->printAddLog(Landroidx/preference/Preference;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->update()V

    :cond_f
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->update()V

    :cond_10
    :goto_7
    return-void
.end method

.method public final onAnimationsFinished()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAnimationsFinished: mNeedUpdatePreference: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    invoke-static {v2, v3, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->update()V

    :cond_0
    return-void
.end method

.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
