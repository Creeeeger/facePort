.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setStateType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->setVolumeRowList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setStateType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getBooleanState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setBooleanState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getIntegerState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setIntegerState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getLongState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setLongState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getStringState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setStringState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCustomState()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setCustomState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-object p0
.end method

.method public final coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isAodVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCaptionComponentEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDlnaEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isExpanded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isFolded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isFromKey(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isKeyDown(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_KEY_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isLeBroadcasting(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMediaDefaultEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMediaDefaultOptionHide(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isQpVolumeBarEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->QP_VOLUMEBAR_EANBLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isRemoteMic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowA11yStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowingVolumeCsd100WarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowingVolumeLimiterDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isShowingVolumeSafetyWarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportBudsTogether(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportTvVolumeControl(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isVibrating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_VIBRATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final isZenMode(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final musicFineVolume(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinAppName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final pinDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setCustomState(Ljava/lang/Object;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setCustomState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getBooleanState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getIntegerState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getLongState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$setStateType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V

    return-object p0
.end method

.method public final setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$getStringState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->secVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->setVolumeRowList(Ljava/util/List;)V

    return-object p0
.end method

.method public final stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final volumeDirection(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    return-object p0
.end method
