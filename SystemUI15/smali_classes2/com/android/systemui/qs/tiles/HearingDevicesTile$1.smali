.class public final Lcom/android/systemui/qs/tiles/HearingDevicesTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/HearingDevicesTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HearingDevicesTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HearingDevicesTile$1;->this$0:Lcom/android/systemui/qs/tiles/HearingDevicesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBluetoothDevicesChanged()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HearingDevicesTile$1;->this$0:Lcom/android/systemui/qs/tiles/HearingDevicesTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBluetoothStateChange(Z)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HearingDevicesTile$1;->this$0:Lcom/android/systemui/qs/tiles/HearingDevicesTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
