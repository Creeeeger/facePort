.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

.field public final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mIsCalledDestroy:Z

    if-eqz v0, :cond_1

    const-string p0, "SecBluetoothDetailsCodecController"

    const-string p1, "EVENT_LDAC_SWITCHING :: it doesn\'t need to update view, it is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->val$preference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    :goto_0
    return-void

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iput-boolean p1, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSscUhqStateChangedFromSettings:Z

    iget-boolean p1, v0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mIsCalledDestroy:Z

    if-eqz p1, :cond_3

    const-string p0, "SecBluetoothDetailsCodecController"

    const-string p1, "EVENT_LDAC_SWITCHING :: it doesn\'t need to update view, it is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;->val$preference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
