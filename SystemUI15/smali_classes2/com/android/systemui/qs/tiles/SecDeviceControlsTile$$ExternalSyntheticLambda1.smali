.class public final synthetic Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;

    return-void
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected serviceInfos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
