.class public final Lcom/android/settings/network/tether/TetherSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/tether/TetherSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/tether/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$1;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$1;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iget-object p1, p1, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$1;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iget-object p1, p1, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$1;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothState$1()V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
