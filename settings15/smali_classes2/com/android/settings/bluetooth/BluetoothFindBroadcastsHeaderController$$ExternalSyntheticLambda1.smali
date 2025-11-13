.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/bluetooth/QrCodeScanModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.settings.BLUETOOTH_LE_AUDIO_QR_CODE_SCANNER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bluetooth_sink_is_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "bluetooth_device_sink"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p0, :cond_1

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "scanBroadcastSource: LeBroadcastAssistant is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "leaveBroadcastSession: LeBroadcastAssistant or CachedDevice is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
