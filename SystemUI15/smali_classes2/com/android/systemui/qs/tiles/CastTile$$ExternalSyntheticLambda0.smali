.class public final synthetic Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->wifi:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;->isDefault:Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->ethernet:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;->isDefault:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->mobile:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;->isDefault:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCastTransportAllowed:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCastTransportAllowed:Z

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHotspotConnected:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
