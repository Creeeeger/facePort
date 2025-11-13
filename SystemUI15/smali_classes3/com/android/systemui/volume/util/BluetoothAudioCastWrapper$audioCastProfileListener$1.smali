.class public final Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->closeProxy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    :cond_0
    return-void
.end method
