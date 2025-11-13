.class Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "SecBluetoothTetherPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 707
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmBluetoothPan(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 711
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmBluetoothPan(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
