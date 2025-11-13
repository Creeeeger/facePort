.class public final Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaBluetoothHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaBluetoothHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string v0, "onServiceConnected"

    const-string v1, "MediaBluetoothHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :cond_0
    const-string p0, "onServiceConnected: "

    const-string p2, " is not supported"

    invoke-static {p1, p0, p2, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    const-string v0, "onServiceDisconnected"

    const-string v1, "MediaBluetoothHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaBluetoothHelper$serviceListener$1;->this$0:Lcom/android/systemui/media/MediaBluetoothHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :cond_0
    const-string p0, "onServiceDisconnected: "

    const-string v0, " is not supported"

    invoke-static {p1, p0, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
