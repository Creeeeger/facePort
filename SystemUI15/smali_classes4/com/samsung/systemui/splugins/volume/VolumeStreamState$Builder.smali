.class public final Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    return-object p0
.end method

.method public final dualBtDeviceAddress(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final dualBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDisabledFixedSession(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DISABLED_FIXED_SESSION:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDynamic(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMuteSupport(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMuted(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToAppMirroring(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToBt(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToBuds(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToBuds3(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS3:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToHeadset(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEADSET:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToHearingAid(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEARING_AID:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToHomeMini(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HOME_MINI:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRoutedToRemoteSpeaker(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_REMOTE_SPEAKER:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final level(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final max(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final min(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final nameRes(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)V

    return-object p0
.end method

.method public final setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->volumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
