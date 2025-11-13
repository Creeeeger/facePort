.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

.field public final synthetic f$1:Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->$r8$lambda$5pt-0_0Nt4v_Acxm0XDhHo50ZdY(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V

    return-void
.end method
