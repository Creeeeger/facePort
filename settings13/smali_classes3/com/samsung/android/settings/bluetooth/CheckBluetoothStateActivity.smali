.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# static fields
.field private static mDialogExist:Z = false

.field private static mExpectingBluetoothOn:Z = false

.field private static mIsDestroyed:Z = false

.field private static mIsRegisterKeyGuardReceiver:Z = false


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyGuardHandler:Landroid/os/Handler;

.field private final mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyGuardUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyGuardReceiver(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckPickerProcess(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchDevicePicker(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBendedPendingIntent(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->sendBendedPendingIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmExpectingBluetoothOn()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsDestroyed()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsRegisterKeyGuardReceiver()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmDialogExist(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmIsRegisterKeyGuardReceiver(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkPickerProcess()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private launchDevicePicker()V
    .locals 8

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchDevicePicker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x0

    .line 305
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/16 v5, 0x69

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x14000000

    .line 314
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    .line 316
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 317
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "android.bluetooth.FromHeadsetActivity"

    .line 319
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 320
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 308
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.bluetooth.pickerdialog.LAUNCH"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    .line 310
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    :goto_1
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 325
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 330
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "android.bluetooth.devicepicker.extra.CALLING_APP_PACKAGE"

    .line 338
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_4
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private processEnableResult()V
    .locals 4

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "processEnableResult ::"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 285
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 5

    const-string v0, "keyguard"

    .line 420
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 422
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    .line 424
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 426
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "afterKeyguardGone"

    .line 427
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v4, "dismissIfInsecure"

    .line 428
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "CheckBluetoothStateActivity"

    const-string v4, "sendBendedPendingIntent"

    .line 430
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 432
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 434
    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CheckBluetoothStateActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget p1, Lcom/android/settings/R$layout;->sec_bluetooth_check_state:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x0

    .line 166
    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    .line 167
    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    .line 169
    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 173
    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    .line 174
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "content://com.sec.knox.provider/BluetoothPolicy"

    .line 190
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "isBluetoothEnabled"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "CursorIndexOutOfBoundsException"

    const-string v3, "CursorWindowAllocationException"

    const-string v4, "true"

    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "isBluetoothEnabled"

    .line 198
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 202
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    throw p0

    :cond_1
    :goto_2
    move v5, p1

    :goto_3
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 208
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v1, "false"

    .line 210
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v9, "isSettingsChangesAllowed"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "isSettingsChangesAllowed"

    .line 217
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v3

    .line 221
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v2

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    throw p0

    :cond_2
    :goto_6
    move v2, p1

    :goto_7
    if-eqz v2, :cond_8

    if-nez v5, :cond_3

    goto/16 :goto_9

    .line 236
    :cond_3
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_4

    const-string p0, "Bluetooth is not supported on this device"

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_4
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    sget v0, Lcom/android/settings/R$string;->bluetooth_frp_permission_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    const-string v0, "keyguard"

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 261
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 263
    iput p1, v0, Landroid/os/Message;->what:I

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 268
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto :goto_8

    .line 271
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    :goto_8
    return-void

    :cond_8
    :goto_9
    const-string v1, "onCreate Bluetooth disable"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v0, Lcom/android/settings/R$string;->bluetooth_security_mode_disable:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "onDestroy :: "

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 378
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 388
    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    .line 389
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 394
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "onResume :: "

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
