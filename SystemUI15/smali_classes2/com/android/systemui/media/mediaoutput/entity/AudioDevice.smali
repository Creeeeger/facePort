.class public interface abstract Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/EntityString;


# virtual methods
.method public clone()Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 0

    return-object p0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 6

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/ext/StringExtKt;->maskedLogText$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "id"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "name"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getState()Lcom/android/systemui/media/mediaoutput/entity/State;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const-string/jumbo v4, "state"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolume()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    const-string/jumbo v5, "volume"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolumeMax()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    const-string/jumbo v5, "volumeMax"

    invoke-direct {v0, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4, v0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;
.end method

.method public getCancelable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
.end method

.method public abstract getDescription()Ljava/lang/CharSequence;
.end method

.method public getDeselectable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFinalControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object p0

    return-object p0
.end method

.method public getForce()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getIcon()Landroidx/compose/ui/graphics/painter/Painter;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/CharSequence;
.end method

.method public getNeedEarProtect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getState()Lcom/android/systemui/media/mediaoutput/entity/State;
.end method

.method public getTransferable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getVolume()I
.end method

.method public abstract getVolumeMax()I
.end method
