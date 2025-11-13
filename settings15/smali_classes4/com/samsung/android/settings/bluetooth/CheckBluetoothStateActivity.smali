.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mDialogExist:Z

.field public static mExpectingBluetoothOn:Z

.field public static mIsDestroyed:Z

.field public static mIsRegisterKeyGuardReceiver:Z


# instance fields
.field public final mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

.field public mCallingAppPackageName:Ljava/lang/String;

.field public final mKeyGuardHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

.field public final mKeyGuardReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

.field public final mKeyGuardUnlockReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public final mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    return-void
.end method


# virtual methods
.method public final checkPickerProcess()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final launchDevicePicker()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchDevicePicker "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/16 v5, 0x69

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x14000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.bluetooth.pickerdialog.LAUNCH"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mCallingAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.bluetooth.devicepicker.extra.CALLING_APP_PACKAGE"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mCallingAppPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivity() failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCreate "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CheckBluetoothStateActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d0836

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v2, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isBluetoothEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "true"

    const-string v4, "CursorWindowAllocationException"

    const-string v5, "CursorIndexOutOfBoundsException"

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "isBluetoothEnabled"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_2

    :goto_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_1
    :goto_4
    move v6, v1

    :goto_5
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v2, "false"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-string v10, "isSettingsChangesAllowed"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v7, "isSettingsChangesAllowed"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_2
    move-exception v3

    goto :goto_6

    :catch_3
    move-exception v3

    goto :goto_8

    :goto_6
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :goto_8
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_2
    :goto_a
    move v3, v1

    :goto_b
    if-eqz v3, :cond_9

    if-nez v6, :cond_3

    goto/16 :goto_d

    :cond_3
    sget-object v2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p0, "Bluetooth is not supported on this device"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-static {v0, v2}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v9, 0x2

    const-string v7, "android.permission.BLUETOOTH_PRIVILEGED"

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move p1, v1

    :cond_5
    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f140721

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mCallingAppPackageName:Ljava/lang/String;

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    :goto_c
    return-void

    :cond_9
    :goto_d
    const-string/jumbo p1, "onCreate Bluetooth disable"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1407ca

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "CheckBluetoothStateActivity"

    const-string/jumbo v1, "onDestroy :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardUnlockReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "CheckBluetoothStateActivity"

    const-string/jumbo v1, "onResume :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final processEnableResult()V
    .locals 4

    const-string v0, "CheckBluetoothStateActivity"

    const-string/jumbo v1, "processEnableResult ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mCallingAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckBluetoothStateActivity -- processEnableResult: called by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mCallingAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CheckBluetoothStateActivity -- processEnableResult: Package name is null"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
