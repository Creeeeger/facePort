.class public final Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$fgetmBroadcastNameButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$fgetmBroadcastNameButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$msaveInputText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    goto :goto_0

    :cond_1
    const-string p0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string p1, "Can\'t save with done"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p1, 0x6

    const/4 p3, 0x0

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$fgetmBroadcastCodeButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$fgetmBroadcastCodeButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$msaveInputText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->-$$Nest$msetEncryptedBroadcast(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    goto :goto_1

    :cond_3
    const-string p0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string p1, "Can\'t save with done"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
