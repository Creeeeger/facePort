.class public final Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hfp:Landroid/bluetooth/BluetoothHeadset;

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hfp:Landroid/bluetooth/BluetoothHeadset;

    :goto_0
    return-void
.end method
