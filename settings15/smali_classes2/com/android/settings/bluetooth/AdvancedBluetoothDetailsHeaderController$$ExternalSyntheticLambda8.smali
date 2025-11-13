.class public final synthetic Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->$r8$lambda$6SrZI3BSq4qkltzfrp_MAHm1c9M(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->$r8$lambda$Csb0x5YFqGGsl1c-eWUx7eKFbN0(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->$r8$lambda$XYWpay_nmEiqDFsW0GD_bvkOldw(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
