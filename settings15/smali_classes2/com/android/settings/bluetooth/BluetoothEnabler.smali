.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# instance fields
.field public final mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mIsUserInteraction:Z

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mPolicyEnabled:Z

.field public final mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

.field public mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field public final mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    const-string p0, "BluetoothEnabler"

    const-string v0, "BluetoothEnabler(Context context, SwitchWidgetController switchController,\n            MetricsFeatureProvider metricsFeatureProvider, int metricsEvent,\n            RestrictionUtils restrictionUtils)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SecSwitchPreferenceScreen;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    return-void
.end method


# virtual methods
.method public final handleStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_1
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

.method public final init(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
    .locals 2

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    new-instance v1, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    return-object v0
.end method

.method public final maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "no_bluetooth"

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "no_config_bluetooth"

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    const-string v2, "BluetoothEnabler"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string v3, "maybeEnforceRestrictions :: restrict by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string p0, "maybeEnforceRestrictions :: can not get restriction policy"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "maybeEnforceRestrictions :: switch type is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBluetoothStateChanged bluetoothState ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "onProfileStateChanged(), profile - "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newState - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEnabler"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onResourceUpdated()V
    .locals 0

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onSwitchStateChange(Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChangeRestriction(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v1, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "is_bluetooth_on"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141fbe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140eb9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141fc3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140eca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140c48

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141fba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140e8b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140c3c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140c47

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbbd

    const/16 v1, 0xc89

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/Utils;->insertMDMEventLog(Landroid/content/Context;I)V

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public final onSwitchStateChangeRestriction(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    const-string v2, "onSwitchChanged :: isChecked = "

    const-string v3, ", isUserInteraction = "

    const-string v4, ", mPolicyEnabled = "

    invoke-static {v2, p1, v3, v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bluetoothState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothEnabler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/16 v4, 0xc

    if-ne v0, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string p1, "onSwitchStateChange :: enabled enforce restriction"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    const/4 v3, 0x1

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const p1, 0x7f1407ca

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    :cond_4
    return v2

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x9f

    invoke-static {v0, v4, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const p1, 0x7f1435a1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    :cond_a
    :goto_0
    return v3
.end method

.method public final onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 11

    const-string v0, "CursorWindowAllocationException"

    const-string v1, "CursorIndexOutOfBoundsException"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    const-string v3, "BluetoothEnabler"

    if-eqz v2, :cond_1

    :try_start_0
    const-string v4, "pause :: unregister BroadcastReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "no BroadcastReceiver to be unregistered"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "pause :: mReceiver is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_2

    check-cast v4, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    :goto_1
    const-string v4, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "isBluetoothEnabled"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "isBluetoothEnabled"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_4
    :goto_6
    const/4 v0, 0x1

    :goto_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p0, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method public final resume(Landroid/content/Context;)V
    .locals 11

    const-string v0, "CursorWindowAllocationException"

    const-string v1, "CursorIndexOutOfBoundsException"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v2, p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    const/4 v3, 0x0

    if-nez p1, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    const/4 p1, 0x1

    if-eqz v2, :cond_6

    iget-object v4, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v4, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v5, v4, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v5, :cond_3

    iget-boolean v5, v5, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mIsProfileReady:Z

    if-nez v5, :cond_3

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput p1, v4, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v5, v5, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setBluetoothSummary()V

    :cond_4
    iget-object v4, v2, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_5

    check-cast v4, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v5, :cond_6

    check-cast v4, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    :goto_0
    const-string v4, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "isBluetoothEnabled"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "BluetoothEnabler"

    if-eqz v4, :cond_7

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "isBluetoothEnabled"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_7
    :goto_5
    move v0, p1

    :goto_6
    if-nez v0, :cond_9

    const-string p1, "resume :: Restricts Bluetooth Enable by MDM"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const-string p1, "satellite_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p0, "satellite mode key does not exist in Settings"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContentObserver:Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    invoke-virtual {v0, p1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_7
    return-void
.end method
