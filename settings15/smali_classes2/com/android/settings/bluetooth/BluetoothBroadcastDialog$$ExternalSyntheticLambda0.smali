.class public final synthetic Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->launchFindBroadcastsActivity()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v0, "BTBroadcastsDialog"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Can not get LE Audio Broadcast Profile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    const-string v2, "LocalBluetoothLeBroadcast"

    if-nez v0, :cond_1

    const-string p1, "The BluetoothLeBroadcast is null when starting the broadcast."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    const-string v3, "startBroadcast: language = null ,programInfo = "

    invoke-static {v3, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeAudioContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    move-object v1, p1

    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)V

    :goto_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.panel.action.CLOSE_PANEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const-string p1, "Can not broadcast successfully"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
