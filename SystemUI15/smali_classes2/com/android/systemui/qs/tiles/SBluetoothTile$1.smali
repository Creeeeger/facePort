.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteModeChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "satellite_mode_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsSatelliteModeOn:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
