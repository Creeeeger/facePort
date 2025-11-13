.class public final Lcom/android/systemui/keyboard/KeyboardUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# instance fields
.field public final mBluetoothDialogDelegate:Lcom/android/systemui/keyboard/BluetoothDialogDelegate;

.field public final mBluetoothManagerProvider:Ljavax/inject/Provider;

.field public mBootCompleted:Z

.field public mBootCompletedTime:J

.field public mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public volatile mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public mEnabled:Z

.field public volatile mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

.field public mInTabletMode:I

.field public mKeyboardName:Ljava/lang/String;

.field public mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mScanAttempt:I

.field public mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mState:I

.field public volatile mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/keyboard/BluetoothDialogDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/keyboard/BluetoothDialogDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBluetoothManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBluetoothDialogDelegate:Lcom/android/systemui/keyboard/BluetoothDialogDelegate;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "KeyboardUI:"

    const-string v0, "  mEnabled="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    const-string v1, "  mBootCompleted="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    const-string v1, "  mBootCompletedTime="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mKeyboardName="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mInTabletMode="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    const-string v1, "  mState="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "STATE_UNKNOWN ("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const-string p0, "STATE_DEVICE_NOT_FOUND"

    goto :goto_0

    :pswitch_2
    const-string p0, "STATE_USER_CANCELLED"

    goto :goto_0

    :pswitch_3
    const-string p0, "STATE_PAIRING_FAILED"

    goto :goto_0

    :pswitch_4
    const-string p0, "STATE_PAIRED"

    goto :goto_0

    :pswitch_5
    const-string p0, "STATE_PAIRING"

    goto :goto_0

    :pswitch_6
    const-string p0, "STATE_WAITING_FOR_BLUETOOTH"

    goto :goto_0

    :pswitch_7
    const-string p0, "STATE_WAITING_FOR_DEVICE_DISCOVERY"

    goto :goto_0

    :pswitch_8
    const-string p0, "STATE_WAITING_FOR_TABLET_MODE_EXIT"

    goto :goto_0

    :pswitch_9
    const-string p0, "STATE_WAITING_FOR_BOOT_COMPLETED"

    goto :goto_0

    :pswitch_a
    const-string p0, "STATE_NOT_ENABLED"

    :goto_0
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onBootCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onTabletModeChanged(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-eqz p1, :cond_2

    :cond_1
    iput p3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    :cond_2
    return-void
.end method

.method public final processKeyboardState()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    iput v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v6, 0xc

    const/16 v7, 0xb

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    :cond_5
    iget v8, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v8, v5, :cond_6

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    if-ne v0, v7, :cond_7

    iput v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return-void

    :cond_7
    const/4 v3, 0x0

    if-eq v0, v6, :cond_a

    iput v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v4, -0x2

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_8

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_1
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    goto :goto_2

    :cond_c
    move-object v0, v7

    :cond_d
    :goto_2
    iget v6, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-eq v6, v1, :cond_e

    if-ne v6, v5, :cond_10

    :cond_e
    if-eqz v0, :cond_f

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v7, v5

    :cond_12
    if-eqz v7, :cond_13

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()V

    goto :goto_3

    :cond_13
    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    iput-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    new-array v5, v2, [Landroid/bluetooth/le/ScanFilter;

    aput-object v4, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    invoke-virtual {v0, v4, v1, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3
    return-void
.end method

.method public final start()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Keyboard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopScanning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    :cond_1
    return-void
.end method
