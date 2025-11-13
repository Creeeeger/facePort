.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mproceedAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x78

    .line 88
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    return-void
.end method

.method private cancelAndFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 346
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private createDialog()V
    .locals 7

    .line 188
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->auto_confirm_bluetooth_activation_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 193
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 197
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 204
    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_off:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 200
    :cond_1
    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_on:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 207
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 211
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 213
    sget v2, Lcom/android/settings/R$string;->bluetooth_ask_lasting_discovery:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 214
    :cond_3
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_lasting_discovery_no_name:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 217
    :cond_4
    iget-object v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 218
    sget v6, Lcom/android/settings/R$string;->bluetooth_ask_discovery:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 219
    :cond_5
    sget v2, Lcom/android/settings/R$string;->bluetooth_ask_discovery_no_name:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 222
    :goto_3
    sget v1, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    sget v1, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 226
    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 232
    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 242
    :goto_4
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 246
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 249
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private parseIntent()Z
    .locals 8

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 364
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "BtRequestPermission"

    if-eqz v3, :cond_1

    .line 365
    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    :cond_1
    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    .line 366
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    .line 367
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    :cond_2
    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    .line 369
    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v3, 0x78

    .line 370
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lt v0, v1, :cond_3

    const/16 v2, 0xe10

    if-le v0, v2, :cond_4

    .line 376
    :cond_3
    iput v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 387
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v2

    const/16 v3, 0x3e8

    .line 390
    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    if-eqz v6, :cond_5

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 392
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_5
    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-system Uid: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to override packageName \n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 402
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v7, 0x5

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find app with package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    return v1

    .line 415
    :cond_7
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_8

    const-string v0, "Error: there\'s a problem starting Bluetooth"

    .line 417
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    return v1

    :cond_8
    return v4

    :cond_9
    const-string v0, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE, android.bluetooth.adapter.action.REQUEST_DISABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 379
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    return v1
.end method

.method private proceedAndFinish()V
    .locals 8

    .line 311
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(Ljava/time/Duration;)I

    .line 316
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 321
    invoke-static {p0, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 323
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v0, :cond_1

    .line 324
    invoke-static {p0, v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 326
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 340
    :cond_5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void

    .line 259
    :cond_0
    iget p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 p2, 0x1

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 278
    :cond_2
    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_4

    .line 263
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 266
    :cond_4
    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 437
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 117
    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v3, 0x3

    const-string v4, "Unknown adapter state: "

    const-string v5, "com.android.settings.bluetooth.extra.APP_LABEL"

    const-string v6, "BtRequestPermission"

    if-ne v2, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto/16 :goto_0

    .line 126
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    :pswitch_2
    if-ne v2, p1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 157
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 160
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCOVERABLE timeout - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 427
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 428
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void
.end method
