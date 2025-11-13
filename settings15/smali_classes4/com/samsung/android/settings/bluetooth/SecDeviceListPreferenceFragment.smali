.class public abstract Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

.field public final mDevicePreferenceMap:Ljava/util/WeakHashMap;

.field public mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public mIsPickerDialog:Z

.field public mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

.field public final mListEventListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

.field public mListView:Landroid/view/View;

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field public mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mScanFinishAction:Ljava/lang/String;

.field public mScanStartTime:J

.field public mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

.field public mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanStartTime:J

    const-string v0, "Callback"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListEventListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->setFilter(I)V

    return-void
.end method


# virtual methods
.method public final addCachedDevices$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->update()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract addPreferencesForActivity()V
.end method

.method public final createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V
    .locals 4

    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "createDevicePreference: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-direct {v1, v2, p1, v3}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V

    if-nez p2, :cond_0

    const-string p0, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Trying to create preference for a exclusively managed device "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->add(Landroidx/preference/Preference;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->initDevicePreference(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    return-void
.end method

.method public initDevicePreference(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public final isSupportBluetoothCast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->addPreferencesForActivity()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    iget-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_0
    const-string p0, "DeviceListPreferenceFragment"

    const-string/jumbo p1, "onActivityCreated(): AppBarLayout is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 3

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "onCastDeviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCastDeviceAdded >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "createCastDevicePreference: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->add(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    return-void
.end method

.method public onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 6

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onClicked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- onClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v3, "disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->disconnect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dexonpc_connection_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    const-string v2, "CachedBluetoothCastDevice"

    if-ne p1, v0, :cond_3

    const-string p1, "Dex is enabled, so connect request will be rejected"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->toastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    const v2, 0x7f14081b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->dispatchAttributesChanged()V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    iget-object v4, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v5, "connect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->connect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public onCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCastDeviceRemoved() name - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->delete(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCastDiscoveryStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v0, "DeviceListPreferenceFragment"

    if-nez p1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "onCreate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    iput-object v1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mIsSupportTips:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string p3, "DeviceListPreferenceFragment"

    const-string/jumbo v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d094a

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0949

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0230

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060738

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/widget/NestedScrollView;->seslSetFillHorizontalPaddingEnabled(I)V

    invoke-virtual {p3}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0a0cc9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mRounded_frame:Landroid/view/View;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setRoundedCorner(Landroid/view/View;)V

    :cond_1
    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    const p2, 0x7f0a05a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setLayoutParams()V

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-boolean v1, p2, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    const v0, 0x7f0a0b15

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0b14

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedDeviceCategory:Landroid/widget/TextView;

    const v0, 0x7f0a0b16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    if-nez p2, :cond_2

    new-instance p2, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {p2, v0, v2, p3, v4}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/bluetooth/BluetoothListController;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    :cond_2
    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setRoundedCorner(Landroid/view/View;)V

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-boolean v1, p2, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    const v0, 0x7f0a0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableDeviceCategory:Landroid/widget/TextView;

    const v0, 0x7f0a0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    if-nez p2, :cond_3

    new-instance p2, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {p2, v0, v1, p3, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/bluetooth/BluetoothListController;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    :cond_3
    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setRoundedCorner(Landroid/view/View;)V

    const p2, 0x7f0a02db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastDeviceCategory:Landroid/widget/TextView;

    const p2, 0x7f0a02dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    if-nez p2, :cond_4

    new-instance p2, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {p2, v0, v1, p3, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/bluetooth/BluetoothListController;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    :cond_4
    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setRoundedCorner(Landroid/view/View;)V

    const p2, 0x7f0a0a85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    if-nez p2, :cond_5

    new-instance p2, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {p2, v0, v1, p3, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/bluetooth/BluetoothListController;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    :cond_5
    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setRoundedCorner(Landroid/view/View;)V

    const p2, 0x7f0a023f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {p3}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_6
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListEventListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    iput-object p0, p2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    return-object p1
.end method

.method public onDestroy()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    sget-object v4, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    aget v5, v1, v2

    add-int/2addr v5, v3

    aput v5, v1, v2

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    aget v4, v1, v3

    add-int/2addr v4, v3

    aput v4, v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDestroy(): device count logging, bondedCount = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , connectedCount = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DeviceListPreferenceFragment"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f141fba

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140ea5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140eba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, "sa_logging_bluetooth"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "bluetooth_paired_devices_number"

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BluetoothListController"

    const-string/jumbo v2, "removeAll() - Triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListView:Landroid/view/View;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListView:Landroid/view/View;

    :cond_4
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDeviceAdded: cached = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bonded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const-string v2, "DeviceListPreferenceFragment"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onDeviceAdded: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", contains already"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    aget-object v4, v4, v2

    invoke-interface {v4, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V

    move v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V

    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v0

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->add(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    iget-object p1, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDeviceDeleted() name - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->delete(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->delete(Landroidx/preference/Preference;)V

    iget-object p0, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onClicked: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecBluetoothDevicePreference"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DevPref -- onClicked: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedForGroup()Z

    move-result v0

    const v3, 0x7f140e8c

    const v4, 0x7f141fba

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f140c3d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Calling disconnect device with "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_c

    const/4 v0, 0x0

    const/16 v5, 0xc

    if-ne p0, v5, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f140c3f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f140c40

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v6, "[^0-9a-zA-Z ]"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "ETC"

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f140ebb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eq p0, v5, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isPanProfileOnlySupported()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string p0, "connectivity"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "isPanProfileDenied: isWiFiConnected"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTetheringErrorWithWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_4

    :cond_8
    :goto_1
    iget-object p0, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_b

    const-string p0, "isPanProfileDenied: isNapEnabled"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v3}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    new-instance v6, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;

    const v3, 0x7f140811

    const v4, 0x7f140810

    const v2, 0x7f140812

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;IIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_b
    :goto_3
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    :cond_c
    :goto_4
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    return-void
.end method

.method public final onResourceUpdated()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "onResourceUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanStartTime:J

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;->update()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v2, "onStop(): bluetooth settings is not foreground. So, stop scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    const-string v0, "Stop_Activity"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v1, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iput-object v1, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, "Callback"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSyncDeviceAdded() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;->update()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeAllGroupDevices(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->clearAllCastedDevices()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RuntimeException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceListPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final removeSelectedGroupDevices()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    return-void
.end method

.method public final sendBsdcDataForSaLogging()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141fba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ea1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setFilter(I)V
    .locals 3

    const-string/jumbo v0, "setFilter: filterType = "

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p1

    aput-object p1, p0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p0

    aput-object p0, v0, v1

    :goto_0
    return-void
.end method
