.class public final Lcom/samsung/systemui/splugins/volume/VolumeState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private boolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private intMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private streamStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->streamStates:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->boolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->intMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->boolMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->intMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->boolMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->intMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setStreamStates$p(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->streamStates:Ljava/util/List;

    return-void
.end method

.method public static synthetic getRingerModeInternal$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStreamStates$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getActiveStream()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getBroadcastMode()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->BROADCAST_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->intMap:Ljava/util/HashMap;

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

.method public final getRingerModeInternal()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getStreamStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->streamStates:Ljava/util/List;

    return-object p0
.end method

.method public final getZenMode()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final isAodVolumePanel()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDisallowMedia()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDisallowRinger()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDisallowSystem()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDualAudio()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->boolMap:Ljava/util/HashMap;

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

.method public final isFixedScoVolume()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isFromKey()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRemoteMic()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method
