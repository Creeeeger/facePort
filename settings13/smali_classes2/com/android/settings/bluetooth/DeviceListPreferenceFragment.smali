.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mCastDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;",
            "Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field protected mIsPickerDialog:Z

.field private mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

.field private mListEventListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

.field protected mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field protected mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field protected mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mNeedVi:Z

.field protected mScanFinishAction:Ljava/lang/String;

.field private mScanStartTime:J

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScanStartTime(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmScanStartTime(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanStartTime:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 116
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 124
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    const-wide/16 v1, 0x0

    .line 128
    iput-wide v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanStartTime:J

    const-string v1, "Callback"

    .line 129
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 138
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 631
    new-instance v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListEventListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(I)V

    return-void
.end method

.method private sendBsdcDataForSaLogging()V
    .locals 3

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_setting_bsdc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    new-instance v2, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected addCachedCastDevices()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 473
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCachedCastDevices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceListPreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 476
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 477
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected addCachedDevices()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 365
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 367
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 368
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 369
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract addPreferencesForActivity()V
.end method

.method createCastDevicePreference(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 5

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "DeviceListPreferenceFragment"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 505
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    .line 507
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    if-nez v0, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->addCastPreference(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Z

    .line 509
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getCachedCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToCastInsertAnimation(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z

    move-result p1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStart >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 515
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setCastInsertAnimation()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Trying to create a device preference before the list group/category exists!"

    .line 497
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 453
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    .line 455
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    if-nez v2, :cond_1

    .line 456
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    .line 457
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertAnimation(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "DeviceListPreferenceFragment"

    const-string p1, "Trying to create a device preference before the list group/category exists!"

    .line 443
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    return-object p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method protected isSupportBluetoothCast()Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

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

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isDisabledAppBar()Z

    move-result p1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setAppbarLayoutListener(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "DeviceListPreferenceFragment"

    const-string/jumbo p1, "onActivityCreated() :: AppBarLayout is null."

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 3

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "onCastDeviceAdded"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 690
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCastDeviceAdded >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createCastDevicePreference(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 0

    .line 524
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->onClicked()V

    return-void
.end method

.method public onCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 3

    .line 700
    sget-boolean v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCastDeviceRemoved() name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-nez v0, :cond_1

    .line 703
    new-instance v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    .line 704
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 707
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->removeInsertCastPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeCastPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    return-void
.end method

.method public onCastDiscoveryStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;II)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v0, "DeviceListPreferenceFragment"

    if-nez p1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "onCreate"

    .line 181
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 183
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 185
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 187
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalCastAdapter()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 203
    sget p3, Lcom/android/settings/R$layout;->sec_preference_list_fragment_bluetooth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 205
    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    .line 206
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->init()V

    .line 207
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListEventListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 7

    .line 308
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getBondedConnectedDeviceCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy() :: device count logging, bondedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , connectedCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DeviceListPreferenceFragment"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->event_bluetooth_setting_connected_device_count:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->event_bluetooth_setting_paired_device_count:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 317
    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v3, "sa_logging_bluetooth"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    aget v0, v0, v2

    const-string v3, "bluetooth_paired_devices_number"

    .line 320
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 400
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 402
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    move v3, v1

    .line 404
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v5, v4

    if-ge v1, v5, :cond_6

    .line 405
    aget-object v4, v4, v1

    invoke-interface {v4, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    move v3, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 411
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 412
    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    move v0, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v3, v0

    :cond_6
    if-nez v3, :cond_7

    .line 421
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 424
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 428
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    .line 429
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 530
    sget-boolean v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->DEBUG:Z

    const-string v1, "DeviceListPreferenceFragment"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceDeleted() name - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->removeInsertPreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 542
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 547
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 549
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->contains(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 551
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 552
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 553
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->contains(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 554
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 558
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->contains(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "onDeviceDeleted() :: There is not existed in List"

    .line 562
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 570
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 572
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 581
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 380
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClicked()V

    return-void
.end method

.method onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    const-string p0, "DeviceListPreferenceFragment"

    const-string v0, "inside onDevicePreferenceClickForHeadset"

    .line 384
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClickedForHeadset()V

    return-void
.end method

.method protected abstract onFinishListAnimation()V
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanStartTime:J

    .line 594
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->onScanningStateChanged(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 261
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCastEventManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 275
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 281
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCastEventManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "onStop() :: bluetooth settings is not foreground. So, stop scanning"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    const-string v0, "Stop_Activity"

    .line 296
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->cleanUp()V

    const-string v0, "Callback"

    .line 301
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method protected abstract onStopScanningState()V
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 719
    sget-boolean v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncDeviceAdded() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 723
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    return-void

    .line 730
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 731
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 735
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mNeedVi:Z

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected removeAllGroupDevices(Z)V
    .locals 2

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 343
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 344
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 345
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->clearAllCastedDevices()V

    :cond_0
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RuntimeException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceListPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected removeSelectedGroupDevices()V
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 332
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 335
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    return-void
.end method

.method final setFilter(I)V
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFilter :: filterType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 159
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 161
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v2

    aput-object v2, p1, v0

    .line 162
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 p1, 0x7

    .line 163
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p1

    aput-object p1, p0, v1

    goto :goto_0

    :cond_0
    new-array v1, v1, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 165
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 166
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p0

    aput-object p0, v1, v0

    :goto_0
    return-void
.end method

.method protected final setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 151
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 p0, 0x0

    aput-object p1, v0, p0

    return-void
.end method
