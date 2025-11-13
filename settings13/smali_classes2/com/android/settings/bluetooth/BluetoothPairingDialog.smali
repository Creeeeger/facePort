.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BluetoothPairingDialog.java"


# instance fields
.field private mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mEmergencyCallbackMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmergencyCallbackMode(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEmergencyCallbackMode(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    .line 99
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setTimeout()V
    .locals 3

    .line 403
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 404
    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "bluetooth.pairing.fragment"

    .line 365
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->hideSoftInput()V

    .line 370
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "BTPairingDialog"

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_c

    .line 165
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    .line 173
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {v2, v1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "intent has not BluetoothDevice info. IllegalStateException occur"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-nez v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void

    .line 183
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyHasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isBondedInitiatedLocally()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->settingIsForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bonding from remote and setting is not foreground, blockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getBlockState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->fetchBlockingDevice()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getBlockState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 194
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void

    :cond_3
    const-string/jumbo v1, "power"

    .line 201
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x3000001a

    .line 202
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    invoke-virtual {v1, p1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 205
    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 213
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mEmergencyCallbackMode:Z

    if-eqz v0, :cond_6

    .line 220
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void

    :cond_6
    const-string/jumbo v0, "phone"

    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 229
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_7

    .line 231
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->makeNotiSound(Landroid/content/Context;)V

    .line 239
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "bluetooth.pairing.fragment"

    .line 240
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    if-eqz v0, :cond_9

    .line 242
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v3

    if-nez v3, :cond_8

    .line 243
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 244
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    :cond_9
    if-nez v0, :cond_a

    .line 250
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    goto :goto_1

    :cond_a
    move v2, p1

    .line 252
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    .line 253
    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    if-nez v2, :cond_b

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 264
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setTimeout()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.bluetooth.device.action.BOND_STATE_CHANGED_FROM_NEARBY_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    return-void

    .line 166
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void
.end method

.method protected onDestroy()V
    .locals 11

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDismissDialogWithAccept()Z

    move-result v0

    const-string v1, " User Interaction: User actionPairing bluetooth device "

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 298
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 300
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const-string v9, ""

    .line 299
    invoke-static/range {v2 .. v10}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 303
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 305
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const-string v9, ""

    .line 304
    invoke-static/range {v2 .. v10}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    .line 314
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 320
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 325
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 326
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPressedHomeKey()V
    .locals 2

    .line 335
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x13a00000

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isBondedInitiatedLocally()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->settingIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 279
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string/jumbo v0, "statusbar"

    .line 281
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 284
    :cond_0
    sget v0, Lcom/android/settings/R$string;->screen_request_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method
