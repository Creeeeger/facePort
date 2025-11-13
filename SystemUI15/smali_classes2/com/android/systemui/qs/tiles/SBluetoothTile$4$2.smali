.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$4;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$4;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "onBluetoothScanStateChanged update = "

    const-string v2, "SBluetoothTile"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;->this$1:Lcom/android/systemui/qs/tiles/SBluetoothTile$4;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->updateItems$1()V

    :cond_1
    return-void
.end method
