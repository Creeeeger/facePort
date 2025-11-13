.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAppLabel:Ljava/lang/CharSequence;

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mCallingUid:I

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public mPackageName:Ljava/lang/String;

.field public mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

.field public mRequest:I

.field public mRequestDialog:Landroidx/appcompat/app/AlertDialog;

.field public mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    return-void
.end method


# virtual methods
.method public final cancelAndFinish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final createDialog$1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const v1, 0x7f140815

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const v1, 0x7f140816

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    goto :goto_4

    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const v3, 0x7f1421a3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v1, 0x7f1406a4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1421a0

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f14069c

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_3
    const v1, 0x7f1402ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f140c29

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :goto_4
    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, "BtRequestPermission"

    if-eqz v3, :cond_1

    iput p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    :cond_1
    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    :cond_2
    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting Bluetooth Discoverable Timeout = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v1, v2, v6}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lt v1, p1, :cond_3

    const/16 v2, 0xe10

    if-le v1, v2, :cond_4

    :cond_3
    iput v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mCallingUid:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    :cond_5
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mCallingUid:I

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-system Uid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to override packageName \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v7, 0x5

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find app with package name "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_b

    :cond_7
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_8

    const-string p1, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const v2, 0x7f140c29

    const v3, 0x7f1402ea

    const/4 v7, 0x0

    const/high16 v8, 0x7f050000

    const-string v9, "Unknown adapter state: "

    if-ne v1, v5, :cond_b

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto/16 :goto_a

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;I)V

    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_9
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "getString(...)"

    if-nez p1, :cond_a

    const p1, 0x7f14069a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const v6, 0x7f140699

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v5, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;

    const/4 v6, 0x1

    invoke-direct {p1, v6, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$3;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$3;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    :goto_3
    iput-object v7, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto/16 :goto_a

    :cond_b
    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto/16 :goto_a

    :pswitch_2
    if-ne v1, p1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto/16 :goto_a

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog$1()V

    goto/16 :goto_a

    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-ne v1, v4, :cond_d

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_4

    :cond_d
    const/4 v0, -0x1

    :goto_4
    new-instance v1, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;I)V

    new-instance v4, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    goto/16 :goto_9

    :cond_e
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-gez v0, :cond_10

    if-nez p1, :cond_f

    const p1, 0x7f1406a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_f
    const v0, 0x7f14069d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    if-nez v0, :cond_12

    if-nez p1, :cond_11

    const p1, 0x7f1406a1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_11
    const v0, 0x7f1421a2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :cond_12
    if-nez p1, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f14069f

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1421a1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_8
    iget-object v0, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;

    invoke-direct {p1, p0, v4, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;)V

    invoke-virtual {v5, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$2;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$3;

    invoke-direct {p1, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$3;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    :goto_9
    iput-object v7, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_14
    :goto_a
    return-void

    :cond_15
    const-string p1, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE, android.bluetooth.adapter.action.REQUEST_DISABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

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

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void
.end method

.method public final proceedAndFinish()V
    .locals 9

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(Ljava/time/Duration;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "discoverable_end_timestamp"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v0, :cond_2

    sget v0, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setDiscoverableAlarm(): alarmTime = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BluetoothDiscoverableTimeoutReceiver"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    if-eqz v7, :cond_1

    invoke-virtual {v8, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v7, "setDiscoverableAlarm(): cancel prev alarm"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v2, v5, v6, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, -0x1

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
