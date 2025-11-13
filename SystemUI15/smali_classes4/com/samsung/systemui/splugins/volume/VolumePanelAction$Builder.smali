.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setActionType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setActionType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setVolumeState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setUnImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getEnabledStreamList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setEnabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getDisabledStreamList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setDisabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCustomAction()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setCustomAction$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method

.method public static synthetic btCallDeviceName$default(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->btCallDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final activeBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final audioSharingDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final btCallDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_CALL_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-object p0
.end method

.method public final coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final flags(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isAodScreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AOD_SCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCaptionComponentEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDensityOrFontChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDisplayTypeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDualPlayMode(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isFolded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isFromKey(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isHeadsetConnected(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_HEADSET_CONNECTED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isKeyDown(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_KEY_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMediaDefault(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMediaDefaultOptionHide(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isOrientationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowA11yStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportBudsTogether(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportSmartViewStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportTvVolumeSync(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_SYNC:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportWarningPopupSideView(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportWarningPopupWalletMini(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isVibrating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_VIBRATING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isZenEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isZenNone(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isZenPriorityOnly(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final musicFineVolume(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinAppName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setCustomAction(Ljava/lang/Object;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setCustomAction$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setDisabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setDisabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    return-object p0
.end method

.method public final setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setEnabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setEnabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    return-object p0
.end method

.method public final setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    return-object p0
.end method

.method public final setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setUnImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V

    return-object p0
.end method

.method public final setVolumeState(Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$setVolumeState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)V

    return-object p0
.end method

.method public final smartViewDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final volumeDirection(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    return-object p0
.end method
