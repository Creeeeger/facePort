.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final metadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->metadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method
