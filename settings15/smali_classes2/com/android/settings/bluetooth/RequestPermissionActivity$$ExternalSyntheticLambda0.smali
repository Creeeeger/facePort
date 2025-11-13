.class public final synthetic Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    iget p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->$r8$clinit:I

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-object v1

    :pswitch_0
    iget-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "BtRequestPermission -- onEnableConfirmed: called by UID : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mCallingUid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "BtRequestPermission -- onEnableConfirmed: Package name is null"

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :goto_0
    iget-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    const/16 v3, 0xc

    if-ne p0, v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog$1()V

    :goto_1
    return-object v1

    :pswitch_1
    sget p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->$r8$clinit:I

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-object v1

    :pswitch_2
    iget-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iget-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    const/16 v3, 0xa

    if-ne p0, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p0, v2, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog$1()V

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
