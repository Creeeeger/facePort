.class public abstract Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

.field public final mHandler:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

.field public mIsNeedVi:Z

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mNeedUpdatePreference:Z

.field public final mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mPreferenceList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/bluetooth/BluetoothListController;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mIsNeedVi:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;-><init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mHandler:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final add(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: mIsNeedVi = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mIsNeedVi:Z

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mIsNeedVi:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mHandler:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->addList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;->putDevicePreferenceMap(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final delete(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mHandler:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->removeList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->this$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    return-void
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public final isDialogType()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract printAddLog(Landroidx/preference/Preference;)V
.end method

.method public final removeAll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    instance-of v2, v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    instance-of v2, v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->reset$1()V

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->update()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final setNeedUpdatePreference()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mNeedUpdatePreference:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "setNeedUpdatePreference: itemAnimator isRunning"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mHandler:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter$MyHandler;->update()V

    :goto_0
    return-void
.end method

.method public final setNeedVi(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setNeedVi: needVi = "

    invoke-static {v1, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mIsNeedVi:Z

    return-void
.end method

.method public abstract update()V
.end method
