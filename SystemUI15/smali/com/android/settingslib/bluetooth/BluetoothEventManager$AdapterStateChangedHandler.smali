.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const-string p3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "BluetoothEventManager"

    const-string v0, "AdapterStateChangedHandler :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-static {p2, v0, p3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz p3, :cond_b

    monitor-enter p3

    const/16 v4, 0xd

    if-ne p2, v4, :cond_8

    :try_start_0
    iget-object v4, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_7

    iget-object v5, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq v8, v2, :cond_1

    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iput-object v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_3

    iget v6, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq v6, v2, :cond_3

    invoke-virtual {v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_3
    iget v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq v6, v2, :cond_4

    iget-boolean v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez v6, :cond_4

    invoke-virtual {v5, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    invoke-virtual {p3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    :cond_5
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v5, :cond_6

    iget-boolean v6, v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateSequeces()V

    iput-object v1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    iput v0, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    goto :goto_6

    :cond_8
    const/16 v4, 0xb

    if-ne p2, v4, :cond_a

    iget-object v4, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_a

    iget-object v5, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    iput-object v1, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :goto_5
    monitor-exit p3

    throw p0

    :cond_a
    :goto_6
    monitor-exit p3

    :cond_b
    if-ne p2, v2, :cond_17

    sget-boolean p3, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    if-eqz p3, :cond_16

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p3

    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v4, "com.android.settings"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/app/ActivityManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_b

    :cond_e
    :goto_7
    const-string v2, "setForegroundActivity :: mForegroundCount = "

    monitor-enter p3

    :try_start_1
    iget-object v4, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_f

    const-string v4, "LocalBluetoothManager"

    const-string v5, "setting foreground activity to null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_a

    :cond_f
    :goto_8
    sget v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    if-lez v4, :cond_10

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    goto :goto_9

    :cond_10
    const-string v4, "LocalBluetoothManager"

    const-string v5, "setForegroundActivity :: mForegroundCount is smaller than 0 = "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const-string v4, "LocalBluetoothManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bluetooth_settings_foreground"

    sget v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_c

    :goto_a
    monitor-exit p3

    throw p0

    :cond_11
    :goto_b
    if-eqz v2, :cond_12

    return-void

    :cond_12
    :goto_c
    new-instance p3, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_2
    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v4, 0x66

    if-ne v2, v4, :cond_13

    const/4 v2, 0x2

    goto :goto_d

    :cond_13
    move v2, v3

    :goto_d
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, p3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_f

    :catch_0
    move-exception p3

    goto :goto_e

    :cond_14
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, p3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :goto_e
    const-string v2, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startActivity() failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_f
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->setQuickPannelOn(Z)V

    :cond_16
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz p3, :cond_17

    iput-object v1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    iput v0, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    :cond_17
    const/16 p3, 0xa

    if-ne p2, p3, :cond_19

    const-string p2, "bluetooth_restart"

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "key_bluetooth_restart"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "key_bluetooth_restart"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz p0, :cond_19

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    :cond_19
    return-void
.end method
