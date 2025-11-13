.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;->refresh()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v0, 0x7f140732

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;->refresh()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v0, 0x7f140732

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;->refresh()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v0, 0x7f140732

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;->refresh()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
