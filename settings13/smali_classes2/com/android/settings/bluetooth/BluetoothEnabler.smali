.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsUserInteraction:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPolicyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyEnabled(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchType(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    .line 198
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
    .locals 1

    .line 204
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    .line 208
    new-instance p2, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {p2}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 210
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 213
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 214
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 219
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    return-object v0
.end method

.method private updateBluetoothState(Z)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 534
    iput v1, v0, Landroid/os/Message;->what:I

    .line 535
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 402
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 404
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    .line 390
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 392
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 380
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 398
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    .line 408
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_bluetooth"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_config_bluetooth"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    const-string v2, "BluetoothEnabler"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v1, "maybeEnforceRestrictions :: restrict by admin"

    .line 564
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "maybeEnforceRestrictions :: can not get restriction policy"

    .line 567
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "maybeEnforceRestrictions :: switch type is null"

    .line 570
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged bluetoothState ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 584
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onProfileStateChanged(), profile - "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newState - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEnabler"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchStateChange(Z)Z
    .locals 13

    .line 414
    const-class v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 418
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    .line 421
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchChanged :: isChecked = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsUserInteraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPolicyEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothEnabler"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 425
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    if-eqz v5, :cond_3

    const-string/jumbo p1, "onSwitchStateChange :: enabled enforce restriction"

    .line 426
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/bluetooth/RestrictionUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v4

    .line 432
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    .line 433
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_5

    .line 434
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_security_mode_disable:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 435
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p0, :cond_4

    .line 436
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    :cond_4
    return v4

    .line 442
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-nez v1, :cond_8

    .line 443
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 445
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    .line 446
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    const-string v11, " User Interaction: User actionEnabling Bluetooth failed Reason: MDM policy"

    .line 445
    invoke-static/range {v5 .. v12}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 449
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_7

    .line 450
    invoke-virtual {p1, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 451
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_7
    return v4

    .line 458
    :cond_8
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v3, 0x9f

    invoke-static {v1, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-eqz p1, :cond_9

    .line 461
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 462
    invoke-static {v1, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 463
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_in_airplane_mode:I

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 465
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v1, :cond_9

    .line 466
    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 470
    :cond_9
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v1, :cond_a

    .line 471
    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    .line 474
    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    if-eqz v1, :cond_e

    .line 475
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->updateBluetoothState(Z)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->getSwitchObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_b

    .line 485
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->screen_bluetooth_setting:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_setting_on_off_switch:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 488
    :cond_b
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->screen_connection_setting:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_connection_setting_on_off_switch:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_c

    .line 493
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->detail_bluetooth_on:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " User Interaction: User actionEnabling Bluetooth succeeded"

    :goto_1
    move-object v11, v5

    goto :goto_2

    .line 500
    :cond_c
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 502
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->event_bluetooth_bddc:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 504
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->detail_bluetooth_bddc_settings_off:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_d
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->detail_bluetooth_off:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " User Interaction: User actionDisabling Bluetooth succeeded"

    goto :goto_1

    .line 517
    :goto_2
    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xbbd

    const/16 v3, 0xc89

    .line 519
    invoke-static {v1, v3, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 522
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    .line 523
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 522
    invoke-static/range {v5 .. v12}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_e
    return v2
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 8

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "BluetoothEnabler"

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "pause :: unregister BroadcastReceiver"

    .line 323
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v0, "no BroadcastReceiver to be unregistered"

    .line 326
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pause :: mReceiver is null"

    .line 329
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->removeChangeListener()V

    :cond_2
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x1

    .line 343
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "isBluetoothEnabled"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 347
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isBluetoothEnabled"

    .line 349
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v3

    .line 353
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 355
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 356
    throw p0

    .line 359
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 362
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 245
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 250
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p0, :cond_1

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_1
    return-void

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 258
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 264
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_3

    .line 265
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->resume()V

    .line 266
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChangeListener()V

    :cond_3
    const-string p1, "content://com.sec.knox.provider/BluetoothPolicy"

    .line 271
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 273
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "isBluetoothEnabled"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v1, "BluetoothEnabler"

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 277
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isBluetoothEnabled"

    .line 279
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 283
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 286
    throw p0

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    if-nez v3, :cond_6

    const-string/jumbo p1, "resume :: Restricts Bluetooth Enable by MDM"

    .line 290
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    .line 292
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 294
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_5
    return-void

    .line 299
    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    .line 302
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_7

    .line 303
    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    .line 309
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    return-void
.end method

.method public setupSwitchBar()V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setupSwitchBar()V

    :cond_0
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->teardownSwitchBar()V

    :cond_0
    return-void
.end method
