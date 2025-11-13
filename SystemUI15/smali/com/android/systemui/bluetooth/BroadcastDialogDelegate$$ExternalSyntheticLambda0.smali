.class public final synthetic Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "BroadcastDialog"

    const-string v0, "BroadcastDialog dismiss."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    const-string v0, "BroadcastDialog"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "startSwitchBroadcast"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const v1, 0x7f130bc0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p1, :cond_2

    const-string p1, "The broadcast profile is null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const v0, 0x7f130bbf

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->refreshSwitchBroadcastButton()V

    goto :goto_0

    :cond_2
    iget p0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    const-string v1, "LocalBluetoothLeBroadcast"

    if-nez v0, :cond_3

    const-string p0, "The BluetoothLeBroadcast is null when stopping the broadcast."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "stopBroadcast()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
