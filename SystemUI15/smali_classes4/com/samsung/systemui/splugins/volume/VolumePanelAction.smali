.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private actionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

.field private boolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private customAction:Ljava/lang/Object;

.field private disabledStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private enabledStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private importantStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private intMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private longMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unImportantStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->actionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->intMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->boolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->stringMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->longMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->importantStreamList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->unImportantStreamList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->enabledStreamList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->disabledStreamList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->boolMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->intMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->longMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->stringMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setActionType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->actionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-void
.end method

.method public static final synthetic access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->boolMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCustomAction$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->customAction:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setDisabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->disabledStreamList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setEnabledStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->enabledStreamList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->importantStreamList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->intMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->longMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setUnImportantStreamList$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->unImportantStreamList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setVolumeState$p(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->volumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-void
.end method

.method public static synthetic getActionType$annotations()V
    .locals 0

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

.method public static synthetic getCustomAction$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFlags$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIconCurrentState$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIconTargetState$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStream$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->actionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-object p0
.end method

.method public final getActiveBtDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveStream()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getAudioSharingDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_CALL_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCoverType()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getCustomAction()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->customAction:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCutoutHeight()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getDisabledStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->disabledStreamList:Ljava/util/List;

    return-object p0
.end method

.method public final getEarProtectLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getEnabledStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->enabledStreamList:Ljava/util/List;

    return-object p0
.end method

.method public final getFlags()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIconCurrentState()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIconTargetState()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getImportantStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->importantStreamList:Ljava/util/List;

    return-object p0
.end method

.method public final getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->intMap:Ljava/util/HashMap;

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

.method public final getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->longMap:Ljava/util/HashMap;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getPinAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPinDevice()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getPinDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getProgress()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getSmartViewDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStream()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->stringMap:Ljava/util/HashMap;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeOutControls()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getTimeOutControlsText()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getUnImportantStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->unImportantStreamList:Ljava/util/List;

    return-object p0
.end method

.method public final getVolumeDirection()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->volumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p0
.end method

.method public final isAllSoundOff()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isAodScreen()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AOD_SCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isBtScoOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCaptionComponentEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isCoverClosed()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDensityOrFontChanged()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDualPlayMode()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->boolMap:Ljava/util/HashMap;

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

.method public final isFolded()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isFromKey()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isFromOutside()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isHasVibrator()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isHeadsetConnected()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_HEADSET_CONNECTED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isKeyDown()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_KEY_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isLockscreen()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMediaDefault()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMediaDefaultOptionHide()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMultiSoundBt()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaDeviceOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaPinDeviceOn()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isShowA11yStream()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSupportTvVolumeSync()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_SYNC:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isVibrating()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_VIBRATING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isVoiceCapable()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isZenEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isZenNone()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isZenPriorityOnly()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->boolMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " : "

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->intMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->longMap:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    aput-object v5, v0, v3

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->stringMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v2

    goto :goto_6

    :cond_7
    :goto_5
    move v6, v1

    :goto_6
    xor-int/2addr v6, v1

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x3f

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
