.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
    .locals 14

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v10, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v12, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v13, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    filled-new-array/range {v0 .. v13}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x0

    const-string v2, "pinDevice"

    const-string v3, "PIN_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x1

    const-string v2, "activeStream"

    const-string v3, "ACTIVE_STREAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x2

    const-string v2, "progress"

    const-string v3, "PROGRESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x3

    const-string v2, "stream"

    const-string v3, "STREAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x4

    const-string v2, "earProtectLevel"

    const-string v3, "EAR_PROTECT_LEVEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x5

    const-string v2, "timeOutControls"

    const-string v3, "TIME_OUT_CONTROLS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x6

    const-string v2, "timeOutControlsText"

    const-string v3, "TIME_OUT_CONTROLS_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x7

    const-string v2, "coverType"

    const-string v3, "COVER_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0x8

    const-string v2, "musicFineVolume"

    const-string v3, "MUSIC_FINE_VOLUME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0x9

    const-string v2, "flags"

    const-string v3, "FLAGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0xa

    const-string v2, "cutoutHeight"

    const-string v3, "CUTOUT_HEIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0xb

    const-string v2, "iconTargetState"

    const-string v3, "ICON_TARGET_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0xc

    const-string v2, "iconCurrentState"

    const-string v3, "ICON_CURRENT_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v1, 0xd

    const-string v2, "volumeDirection"

    const-string v3, "VOLUME_DIRECTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    return-object v0
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->fieldName:Ljava/lang/String;

    return-object p0
.end method
