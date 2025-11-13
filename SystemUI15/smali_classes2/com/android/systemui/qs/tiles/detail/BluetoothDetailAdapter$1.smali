.class public final Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getDevices$1()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->updateItems$1()V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->updateMusicShareItems()V

    :cond_2
    return-void
.end method
