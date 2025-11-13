.class public final Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private boolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private intMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:I

.field private stringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->boolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->intMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->boolMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->intMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->stringMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->boolMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->intMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->streamType:I

    return-void
.end method

.method public static final synthetic access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic getStreamType$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getDualBtDeviceAddress()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDualBtDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->intMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getMax()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getMin()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getNameRes()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRemoteLabel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStreamType()I
    .locals 0

    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->streamType:I

    return p0
.end method

.method public final getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->stringMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final isDisabledFixedSession()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DISABLED_FIXED_SESSION:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDynamic()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->boolMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isMuteSupport()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMuted()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToAppMirroring()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToBt()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToBuds()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToBuds3()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS3:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToHeadset()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEADSET:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToHearingAid()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEARING_AID:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToHomeMini()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HOME_MINI:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToRemoteSpeaker()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_REMOTE_SPEAKER:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->streamType:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuteSupport()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBuds()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToAppMirroring()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHeadset()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuteSupport()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDisabledFixedSession()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getMin()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getMax()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getRemoteLabel()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getNameRes()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p0, v0

    const-string v0, "[stream="

    move/from16 v19, v15

    const-string v15, "] isDynamic="

    move/from16 v20, v13

    const-string v13, ", isMuted="

    invoke-static {v0, v1, v15, v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMuteSupport="

    const-string v2, ", isRoutedToBt="

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v3, ", isRoutedToBuds="

    const-string v4, ", isRoutedToAppMirroring="

    invoke-static {v0, v5, v3, v6, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v3, ", isRoutedToHeadset="

    invoke-static {v0, v7, v3, v8, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0, v9, v1, v10, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDisabledFixedSession="

    const-string v2, ", level="

    invoke-static {v0, v11, v1, v12, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", min="

    const-string v2, ", max="

    move/from16 v3, v20

    invoke-static {v0, v3, v1, v14, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dualBtDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dualBtDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteLabel="

    const-string v2, ", nameRes="

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
