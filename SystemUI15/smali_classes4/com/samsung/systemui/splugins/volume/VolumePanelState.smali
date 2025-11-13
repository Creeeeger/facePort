.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumePanelState$Companion;

.field public static final DIALOG_EXPAND_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_HOVERING_TIMEOUT_MILLIS:I = 0x3e80

.field public static final DIALOG_ODI_CAPTIONS_TOOLTIP_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_SAFETYWARNING_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_TIMEOUT_MILLIS:I = 0xbb8

.field public static final DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS:I = 0xea60

.field public static final DIALOG_TIMEOUT_SUBDISPLAY:I = 0x3e8


# instance fields
.field private booleanState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private customState:Ljava/lang/Object;

.field private integerState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private longState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field private stringState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volumeRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->Companion:Lcom/samsung/systemui/splugins/volume/VolumePanelState$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->volumeRowList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->integerState:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->booleanState:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->longState:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stringState:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBooleanState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->booleanState:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIntegerState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->integerState:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getLongState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->longState:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getStringState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stringState:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setBooleanState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->booleanState:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCustomState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->customState:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setIntegerState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->integerState:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setLongState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->longState:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setStateType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-void
.end method

.method public static final synthetic access$setStringState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stringState:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic getActiveStream$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCoverType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCustomState$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRingerModeInternal$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStateType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStream$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVolumeRowList$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getActiveStream()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getCoverType()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getCustomState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->customState:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCutoutHeight()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getEarProtectLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIconCurrentState()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIconTargetState()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->integerState:Ljava/util/HashMap;

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

.method public final getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->longState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final getMusicFineVolume()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getPinAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPinDevice()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getPinDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRingerModeInternal()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p0
.end method

.method public final getStream()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stringState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getSystemTimeNow()J
    .locals 2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeOut()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getTimeOutControls()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getTimeOutControlsText()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getVolumeDirection()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getVolumeRowList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->volumeRowList:Ljava/util/List;

    return-object p0
.end method

.method public final isAllSoundOff()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isAnimating()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isAodVolumePanel()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isBtScoOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCaptionComponentEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isConfigurationChanged()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCoverClosed()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDlnaEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDualAudio()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->booleanState:Ljava/util/HashMap;

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

.method public final isExpanded()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isFolded()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isFromKey()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isHasVibrator()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isKeyDown()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_KEY_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isLockscreen()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMediaDefaultEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMediaDefaultOptionHide()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMultiSoundBt()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isOpenThemeChanged()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isPendingState()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isQpVolumeBarEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->QP_VOLUMEBAR_EANBLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRemoteMic()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaDeviceOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaPinDeviceOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowA11yStream()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowing()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowingSubDisplayVolumePanel()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowingVolumeCsd100WarningDialog()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowingVolumeLimiterDialog()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowingVolumeSafetyWarningDialog()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSupportBudsTogether()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSupportTvVolumeControl()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isTracking()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isVibrating()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_VIBRATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isVoiceCapable()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isWithAnimation()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isZenMode()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final setVolumeRowList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->volumeRowList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v5

    invoke-virtual {v1, p0, v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->booleanState:Ljava/util/HashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " : "

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    aput-object v5, v1, v6

    iget-object v5, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->integerState:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    aput-object v7, v1, v5

    iget-object v7, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->longState:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    invoke-virtual {v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v7, 0x2

    aput-object v9, v1, v7

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->stringState:Ljava/util/HashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_8

    goto :goto_6

    :cond_8
    move v10, v6

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v5

    :goto_7
    xor-int/2addr v10, v5

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    const/4 v5, 0x3

    aput-object p0, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x3f

    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "activeStream="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(vol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") } "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
