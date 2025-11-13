.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final BASE_PRIORITY:I = 0x2

.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Companion;

.field public static final ICON_APP_MIRRORING:I = 0x8

.field public static final ICON_AUDIO_ACC:I = 0x4

.field public static final ICON_BLUETOOTH:I = 0x2

.field public static final ICON_BUDS:I = 0xa

.field public static final ICON_BUDS3:I = 0xd

.field public static final ICON_DEFAULT:I = 0x3

.field public static final ICON_HEADSET:I = 0x9

.field public static final ICON_HEARING_AID:I = 0xe

.field public static final ICON_HOME_MINI:I = 0xc

.field public static final ICON_MIRRORING:I = 0x5

.field public static final ICON_MUTE:I = 0x1

.field public static final ICON_REMOTE:I = 0x6

.field public static final ICON_REMOTE_MUTE:I = 0x7

.field public static final ICON_REMOTE_SPEAKER:I = 0xb

.field public static final ICON_VIBRATE:I = 0x0

.field public static final PROGRESS_BAR_UNIT:I = 0x64

.field public static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private boolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private intMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private longMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:I

.field private stringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->Companion:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->boolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->intMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->stringMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->longMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->boolMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->intMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->longMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->stringMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->boolMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->intMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->longMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->streamType:I

    return-void
.end method

.method public static final synthetic access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic getIconType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStreamType$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAudibleLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getDualBtDeviceAddress()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDualBtDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEarProtectLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIconType()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->intMap:Ljava/util/HashMap;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getLevelMax()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getLevelMin()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->longMap:Ljava/util/HashMap;

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

.method public final getNameRes()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOriginalPriority()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getPriority()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getRealLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method public final getRemoteLabel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSmartViewLabel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStreamType()I
    .locals 0

    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->streamType:I

    return p0
.end method

.method public final getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->stringMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getUserAttemptTime()J
    .locals 2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isActiveShow()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isDynamic()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->boolMap:Ljava/util/HashMap;

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

.method public final isIconClickable()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isIconEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isImportant()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isMuted()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isRoutedToBluetooth()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isSliderEnabled()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isTracking()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumePanelValues;

    iget v1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->streamType:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->rowStreamTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(vol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
