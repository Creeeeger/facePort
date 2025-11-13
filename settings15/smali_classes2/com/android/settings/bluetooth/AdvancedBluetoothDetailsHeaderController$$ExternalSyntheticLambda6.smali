.class public final synthetic Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->$r8$lambda$xfVzzYIfvP2Tu_dFOeGOgVk9q0E(Landroid/bluetooth/BluetoothDevice;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
