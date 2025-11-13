.class public final synthetic Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Runnable;

    packed-switch p2, :pswitch_data_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
