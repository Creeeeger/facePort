.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic val$bluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$runnableConnected:Ljava/lang/Runnable;

.field public final synthetic val$runnableDisconnected:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$bluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$runnableConnected:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$runnableDisconnected:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$bluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$runnableConnected:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;->val$runnableDisconnected:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
